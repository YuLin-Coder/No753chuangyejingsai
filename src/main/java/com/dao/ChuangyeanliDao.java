package com.dao;

import com.entity.ChuangyeanliEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.ChuangyeanliView;

/**
 * 创业案例 Dao 接口
 *
 * @author 
 * @since 2021-04-03
 */
public interface ChuangyeanliDao extends BaseMapper<ChuangyeanliEntity> {

   List<ChuangyeanliView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
