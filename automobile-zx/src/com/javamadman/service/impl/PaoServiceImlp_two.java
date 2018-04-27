package com.javamadman.service.impl;

import com.javamadman.dao.PaoDao;
import com.javamadman.dao.impl.PaoDaoImpl;
import com.javamadman.service.PaoService_two;

public class PaoServiceImlp_two implements PaoService_two {
    @Override
    public int add_two(String price, int i_id,String status,String car,String uid) {
        PaoDao pd=new PaoDaoImpl();
        int a=-1;
        try {
            a=pd.add_two(price,i_id,status,car,uid);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return a;
    }
}
