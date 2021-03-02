<template> 
  <div class="app-container">
    <el-card class="filter-container" shadow="never">
      <div>
        <i class="el-icon-search"></i>
        <span>筛选搜索</span>
        <el-button
          style="float:right"
          type="primary"
          @click="handleSearchList()"
          size="small">
          查询搜索
        </el-button>
        <el-button
          style="float:right;margin-right: 15px"
          @click="handleResetSearch()"
          size="small">
          重置
        </el-button>
      </div>
      <div style="margin-top: 15px">
        <el-form :inline="true" :model="listQuery" size="small" label-width="140px">
          <el-form-item label="输入搜索：">
            <el-input v-model="listQuery.keyword" class="input-width" placeholder="ID/正式名" clearable></el-input>
          </el-form-item>
        </el-form>
      </div>
    </el-card>
    <el-card class="operate-container" shadow="never">
      <i class="el-icon-tickets"></i>
      <span>数据列表</span>
      <el-button size="mini" class="btn-add" @click="handleAdd()" style="margin-left: 20px">添加</el-button>
    </el-card>
    <div class="table-container">
      <el-table ref="supplierTable"
                :data="list"
                style="width: 100%;"
                v-loading="listLoading" border>
        <el-table-column label="编号" width="100" align="center">
          <template slot-scope="scope">{{scope.row.id}}</template>
        </el-table-column>
        <el-table-column label="供应商ID" width="100" align="center">
          <template slot-scope="scope">{{scope.row.supplierCode}}</template>
        </el-table-column>
        <el-table-column label="正式名" align="center">
          <template slot-scope="scope">{{scope.row.supplierName}}</template>
        </el-table-column>
        <el-table-column label="简名" align="center">
          <template slot-scope="scope">{{scope.row.supplierShortName}}</template>
        </el-table-column>
        <el-table-column label="联系人" align="center">
          <template slot-scope="scope">{{scope.row.contacts}}</template>
        </el-table-column>
        <el-table-column label="联系人电话" align="center">
          <template slot-scope="scope">{{scope.row.contactsTel}}</template>
        </el-table-column>
        <el-table-column label="联系人手机" align="center">
          <template slot-scope="scope">{{scope.row.contactsPhone}}</template>
        </el-table-column>
        <el-table-column label="联系人微信" align="center">
          <template slot-scope="scope">{{scope.row.contactsWechat}}</template>
        </el-table-column>
        <el-table-column label="公司地址" width="160" align="center">
          <template slot-scope="scope">{{scope.row.supplierAddress}}</template>
        </el-table-column>
        <el-table-column label="公司状态" width="160" align="center">
          <template slot-scope="scope">{{scope.row.status}}</template>
        </el-table-column>
        <el-table-column label="添加时间" width="160" align="center">
          <template slot-scope="scope">{{scope.row.createTime | formatDateTime}}</template>
        </el-table-column>
        <el-table-column label="最后登录" width="160" align="center">
          <template slot-scope="scope">{{scope.row.updateTime | formatDateTime}}</template>
        </el-table-column>

          <el-table-column label="操作" width="180" align="center">
            <template slot-scope="scope">

              <el-button size="mini"
                         type="text"
                         @click="handleUpdate(scope.$index, scope.row)">编辑
              </el-button>
              <el-button size="mini"
                         type="text"
                         @click="handleDelete(scope.$index, scope.row)">删除
              </el-button>
            </template>
          </el-table-column>

      </el-table>
    </div>
    <div class="pagination-container">
      <el-pagination
        background
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        layout="total, sizes,prev, pager, next,jumper"
        :current-page.sync="listQuery.pageNum"
        :page-size="listQuery.pageSize"
        :page-sizes="[10,15,20]"
        :total="total">
      </el-pagination>
    </div>
    <el-dialog
      :title="isEdit?'编辑用户':'添加用户'"
      :visible.sync="dialogVisible"
      width="40%">
      <el-form :model="supplier"
               ref="supplierForm"
               label-width="150px" size="small">
        <el-form-item label="供应商ID">
          <el-input v-model="supplier.supplierCode" style="width: 250px"></el-input>
        </el-form-item>
        <el-form-item label="正式名">
          <el-input v-model="supplier.supplierName" style="width: 250px"></el-input>
        </el-form-item>
        <el-form-item label="简名">
          <el-input v-model="supplier.supplierShortName" style="width: 250px"></el-input>
        </el-form-item>
        <el-form-item label="联系人">
          <el-input v-model="supplier.contacts" style="width: 250px"></el-input>
        </el-form-item>
        <el-form-item label="联系人电话">
          <el-input v-model="supplier.contactsTel" style="width: 250px"></el-input>
        </el-form-item>
        <el-form-item label="联系人微信">
          <el-input v-model="supplier.contactsWechat" style="width: 250px"></el-input>
        </el-form-item>
        <el-form-item label="公司地址">
          <el-input v-model="supplier.supplierAddress" style="width: 250px"></el-input>
        </el-form-item>
        <el-form-item label="公司状态">
          <el-input v-model="supplier.status" style="width: 250px"></el-input>
        </el-form-item>
      </el-form>


      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false" size="small">取 消</el-button>
        <el-button type="primary" @click="handleDialogConfirm()" size="small">确 定</el-button>
      </span>
    </el-dialog>
  </div>
</template>
<script>
import {fetchList,createSupplier,updateSupplier,deleteSupplier,fetchAllSupplierList} from '@/api/supplier';
import {formatDate} from '@/utils/date';

const defaultListQuery = {
  pageNum: 1,
  pageSize: 10,
  keyword: null
};
const defaultSupplier = {
  id: null,
  supplierName: null,
  supplierShortName: null,
  contacts: null,
  contactsTel: null,
  contactsWechat: null,
  status: 1
};
export default {
  name: 'supplierList',
  data() {
    return {
      listQuery: Object.assign({}, defaultListQuery),
      list: null,
      total: null,
      listLoading: false,
      dialogVisible: false,
      supplier: Object.assign({}, defaultSupplier),
      isEdit: false,
      allocDialogVisible: false,
      allocRoleIds:[],
      allRoleList:[],
      allocSupplierId:null
    }
  },
  created() {
    this.getList();
  },
  filters: {
    formatDateTime(time) {
      if (time == null || time === '') {
        return 'N/A';
      }
      let date = new Date(time);
      return formatDate(date, 'yyyy-MM-dd hh:mm:ss')
    }
  },
  methods: {
    handleResetSearch() {
      this.listQuery = Object.assign({}, defaultListQuery);
    },
    handleSearchList() {
      this.listQuery.pageNum = 1;
      this.getList();
    },
    handleSizeChange(val) {
      this.listQuery.pageNum = 1;
      this.listQuery.pageSize = val;
      this.getList();
    },
    handleCurrentChange(val) {
      this.listQuery.pageNum = val;
      this.getList();
    },
    handleAdd() {
      this.dialogVisible = true;
      this.isEdit = false;
      this.supplier = Object.assign({},defaultSupplier);
    },
    handleDelete(index, row) {
      this.$confirm('是否要删除该用户?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        deleteSupplier(row.id).then(response => {
          this.$message({
            type: 'success',
            message: '删除成功!'
          });
          this.getList();
        });
      });
    },
    handleUpdate(index, row) {
      this.dialogVisible = true;
      this.isEdit = true;
      this.supplier = Object.assign({},row);
    },
    handleDialogConfirm() {
      this.$confirm('是否要确认?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        if (this.isEdit) {
          updateSupplier(this.supplier.id,this.supplier).then(response => {
            this.$message({
              message: '修改成功！',
              type: 'success'
            });
            this.dialogVisible =false;
            this.getList();
          })
        } else {
          createSupplier(this.supplier).then(response => {
            this.$message({
              message: '添加成功！',
              type: 'success'
            });
            this.dialogVisible =false;
            this.getList();
          })
        }
      })
    },
    getList() {
      this.listLoading = true;
      fetchList(this.listQuery).then(response => {
        this.listLoading = false;
        this.list = response.data.list;
        this.total = response.data.total;
      });
    },
    getAllSupplierList() {
      fetchAllSupplierList().then(response => {
        this.allSupplierList = response.data;
      });
    },
  }
}
</script>
<style></style>


