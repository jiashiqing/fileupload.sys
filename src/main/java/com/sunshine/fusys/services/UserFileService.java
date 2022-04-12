package com.sunshine.fusys.services;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sunshine.fusys.mappers.UserFileDao;
import com.sunshine.fusys.models.Page;
import com.sunshine.fusys.models.UserFileDTO;
import com.sunshine.fusys.util.LogUtil;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

//import org.noo.pagination.page.PageContext;
//import org.noo.pagination.page.Pagination;

/**
 * 创建人：fantasy <br>
 * 创建时间：2013-12-3 <br>
 * 功能描述： 用户上传下载文件操作DAO<br>
 */
@Service("userFileService")
public class UserFileService {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private UserFileDao userFileDao;

    /**
     * 保存上传文件
     *
     * @param userFile
     * @author fantasy
     * @date 2013-12-3
     */
    public void save(UserFileDTO userFile) {
        userFileDao.save(userFile);
        logger.info(LogUtil.getLogStr("saveUserFile", "200", userFile, "", ""));
    }

    /**
     * 查询用户上传文件列表
     *
     * @param map
     * @return List<UserFileDTO>
     * @author fantasy
     * @date 2013-12-3
     */
    public List<UserFileDTO> find(Map<String, Object> map) {
        logger.info(LogUtil.getLogStr("findUserFileList", "200", map, "", ""));
        return userFileDao.find(map);
    }

    /**
     * 查询用户上传文件列表
     *
     * @param map
     * @return List<UserFileDTO>
     * @author fantasy
     * @date 2013-12-3
     */
    public Page findPage(Map<String, Object> map) {
        logger.info(LogUtil.getLogStr("findUserFileList", "200", map, "", ""));
        String pageNum = String.valueOf(map.get("pageNum"));
        PageHelper.startPage(StringUtils.isEmpty(pageNum) ? 1 : Integer.parseInt(pageNum), 5);
        List<UserFileDTO> list = userFileDao.findPage(map);
        // 取分页信息
        PageInfo<UserFileDTO> pageInfo = new PageInfo<UserFileDTO>(list);
        Page page = new Page();
        page.setPage(pageInfo.getPageNum());// 当前页
        page.setRows(pageInfo.getPageSize()); // 页大小
        page.setTotal(pageInfo.getPages()); // 总页数
        page.setRecords(pageInfo.getTotal()); // 总条数
        page.setDataRows(pageInfo.getList()); //

        return page;
    }
}