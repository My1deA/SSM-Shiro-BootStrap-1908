package cn.T4.credentials;

import cn.T4.domain.Resources;
import cn.T4.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class FilterChainDefinitionMapBuilder {

    @Autowired
    private ResourceService resourceService;

    public Map<String,String> builder(){
        Map<String,String> map=new LinkedHashMap<String,String>();
       /* map.put(" /static/**","anon");
        map.put("/js/**","anon");
        map.put("/css/**","anon");
        map.put(" /image/**","anon");
        map.put("/user/login","anon");
        map.put("/index","anon");
        map.put("/logout","anon");
        map.put("/student.jsp","roles[stu]");
        map.put("/teacher.jsp","roles[tea]");
        map.put("/list.jsp","roles[tea,stu]");
        map.put("/**","authc");*/

        List<Resources> list=resourceService.selectAllByStatusAndSortNumAsc();
        for(Resources r:list){
            map.put(r.getKey(),r.getVal());
        }

        return map;
    }
}


/*  /static/** = anon
                /js/** = anon
                /css/** = anon
                /image/** = anon
                /user/login=anon
                /index=anon
                /logout=logout

                /student.jsp=roles[stu]
                /teacher.jsp=roles[tea]
                /list.jsp=roles[tea,stu]

                /**=authc */
