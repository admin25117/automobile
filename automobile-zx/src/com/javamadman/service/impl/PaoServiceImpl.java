package com.javamadman.service.impl;

import com.javamadman.dao.PaoDao;
import com.javamadman.dao.impl.PaoDaoImpl;

public class PaoServiceImpl implements com.javamadman.service.PaoService {
    @Override
    public int add(String get_time, String set_time) {
        PaoDao pd=new PaoDaoImpl();
        int a=-1;
        try {
            a=pd.add(get_time,set_time);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return a;
    }
}
