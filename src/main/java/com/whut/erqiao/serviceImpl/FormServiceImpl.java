package com.whut.erqiao.serviceImpl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.whut.erqiao.base.BaseDaoImpl;
import com.whut.erqiao.entity.Form;
import com.whut.erqiao.service.FormService;
@Service
@Transactional
public class FormServiceImpl extends BaseDaoImpl<Form> implements FormService{

}
