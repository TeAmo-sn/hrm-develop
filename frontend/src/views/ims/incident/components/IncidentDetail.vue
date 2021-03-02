<template> 
  <el-card class="form-container" shadow="never">
    <el-steps :active="active" finish-status="success" align-center>
      <el-step title="填写患者信息"></el-step>
      <el-step title="填写事件信息"></el-step>
      <el-step title="填写其他内容"></el-step>
    </el-steps>
    <incident-patient-detail
      v-show="showStatus[0]"
      v-model="incidentParam"
      :is-edit="isEdit"
      @nextStep="nextStep">
    </incident-patient-detail>
    <incident-info-detail
      v-show="showStatus[1]"
      v-model="incidentParam"
      :is-edit="isEdit"
      @nextStep="nextStep"
      @prevStep="prevStep">
    </incident-info-detail>
    <incident-other-detail
      v-show="showStatus[2]"
      v-model="incidentParam"
      :is-edit="isEdit"
      @prevStep="prevStep"
      @finishCommit="finishCommit">
    </incident-other-detail>
  </el-card>
</template>
<script>
  import IncidentPatientDetail from './IncidentPatientDetail';
  import IncidentInfoDetail from './IncidentInfoDetail';
  import IncidentOtherDetail from './IncidentOtherDetail';
  import {createIncident,getIncident,updateIncident} from '@/api/incident';

  const defaultIncidentParam = {
    albumPics: '',
    brandId: null,
    brandName: '',
    deleteStatus: 0,
    description: '',
    detailDesc: '',
    detailHtml: '',
    detailMobileHtml: '',
    detailTitle: '',
    feightTemplateId: 0,
    flashPromotionCount: 0,
    flashPromotionId: 0,
    flashPromotionPrice: 0,
    flashPromotionSort: 0,
    giftPoint: 0,
    giftGrowth: 0,
    keywords: '',
    lowStock: 0,
    name: '',
    newStatus: 0,
    note: '',
    originalPrice: 0,
    pic: '',
    //会员价格{memberLevelId: 0,memberPrice: 0,memberLevelName: null}
    memberPriceList: [],
    //商品满减
    incidentFullReductionList: [{fullPrice: 0, reducePrice: 0}],
    //商品阶梯价格
    incidentLadderList: [{count: 0,discount: 0,price: 0}],
    previewStatus: 0,
    price: 0,
    incidentAttributeCategoryId: null,
    //商品属性相关{incidentAttributeId: 0, value: ''}
    incidentAttributeValueList: [],
    //商品sku库存信息{lowStock: 0, pic: '', price: 0, sale: 0, skuCode: '', spData: '', stock: 0}
    skuStockList: [],
    //商品相关专题{subjectId: 0}
    subjectIncidentRelationList: [],
    //商品相关优选{prefrenceAreaId: 0}
    prefrenceAreaIncidentRelationList: [],
    incidentCategoryId: null,
    incidentCategoryName: '',
    incidentSn: '',
    promotionEndTime: '',
    promotionPerLimit: 0,
    promotionPrice: null,
    promotionStartTime: '',
    promotionType: 0,
    publishStatus: 0,
    recommandStatus: 0,
    sale: 0,
    serviceIds: '',
    sort: 0,
    stock: 0,
    subTitle: '',
    unit: '',
    usePointLimit: 0,
    verifyStatus: 0,
    weight: 0
  };
  export default {
    name: 'IncidentDetail',
    components: {IncidentInfoDetail, IncidentPatientDetail, IncidentOtherDetail},
    props: {
      isEdit: {
        type: Boolean,
        default: false
      }
    },
    data() {
      return {
        active: 0,
        incidentParam: Object.assign({}, defaultIncidentParam),
        showStatus: [true, false, false, false]
      }
    },
    created(){
      if(this.isEdit){
        getIncident(this.$route.query.id).then(response=>{
          this.incidentParam=response.data;
        });
      }
    },
    methods: {
      hideAll() {
        for (let i = 0; i < this.showStatus.length; i++) {
          this.showStatus[i] = false;
        }
      },
      prevStep() {
        if (this.active > 0 && this.active < this.showStatus.length) {
          this.active--;
          this.hideAll();
          this.showStatus[this.active] = true;
        }
      },
      nextStep() {
        if (this.active < this.showStatus.length - 1) {
          this.active++;
          this.hideAll();
          this.showStatus[this.active] = true;
        }
      },
      finishCommit(isEdit) {
        this.$confirm('是否要提交该产品', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          if(isEdit){
            updateIncident(this.$route.query.id,this.incidentParam).then(response=>{
              this.$message({
                type: 'success',
                message: '提交成功',
                duration:1000
              });
              this.$router.back();
            });
          }else{
            createIncident(this.incidentParam).then(response=>{
              this.$message({
                type: 'success',
                message: '提交成功',
                duration:1000
              });
              location.reload();
            });
          }
        })
      }
    }
  }
</script>
<style>
  .form-container {
    width: 800px;
  }
</style>


