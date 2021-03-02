package jp.co.nss.hrm.backend.api.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import jp.co.nss.hrm.backend.api.service.ReagentSupplierService;
import jp.co.nss.hrm.backend.common.api.CommonPage;
import jp.co.nss.hrm.backend.common.api.CommonResult;
import jp.co.nss.hrm.backend.model.ReagentSupplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@Api(tags = "ReagentBranchController", description = "系统供应商管理")
@RequestMapping("/supplier")
public class ReagentSupplierController {
    @Autowired
    private ReagentSupplierService supplierService;

    @ApiOperation("添加供应商")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult create(@RequestBody ReagentSupplier supplier) {
        int count = supplierService.create(supplier);
        if (count > 0) {
            return CommonResult.success(count);
        }
        return CommonResult.failed();
    }

    @ApiOperation("修改供应商")
    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable Long id, @RequestBody ReagentSupplier supplier) {
        int count = supplierService.update(id, supplier);
        if (count > 0) {
            return CommonResult.success(count);
        }
        return CommonResult.failed();
    }
    @ApiOperation("删除供应商")
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable Long id) {
        int count = supplierService.delete(id);
        if (count > 0) {
            return CommonResult.success(count);
        }
        return CommonResult.failed();
    }
    @ApiOperation("获取所有供应商")
    @RequestMapping(value = "/listAll", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<List<ReagentSupplier>> listAll() {
        List<ReagentSupplier> supplierList = supplierService.list();
        return CommonResult.success(supplierList);
    }

    @ApiOperation("分页获取供应商列表")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<ReagentSupplier>> list(@RequestParam(value = "keyword", required = false) String keyword,
                                                          @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
                                                          @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum) {
        List<ReagentSupplier> supplierList = supplierService.list(keyword, pageSize, pageNum);
        return CommonResult.success(CommonPage.restPage(supplierList));
    }



    @ApiOperation("获取指定用户信息")
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<ReagentSupplier> getItem(@PathVariable Long id) {
        ReagentSupplier supplier = supplierService.getItem(id);
        return CommonResult.success(supplier);
    }


}