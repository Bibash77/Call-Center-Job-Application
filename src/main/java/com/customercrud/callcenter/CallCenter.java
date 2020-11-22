package com.customercrud.callcenter;

import com.customercrud.callcenter.core.UserConst;
import com.customercrud.callcenter.core.UserType;
import com.customercrud.callcenter.entity.User;
import com.customercrud.callcenter.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.util.ObjectUtils;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import javax.annotation.PostConstruct;

@SpringBootApplication
@EnableSwagger2
public class CallCenter extends SpringBootServletInitializer {
    @Autowired
    private UserRepository userRepository;

    public static void main(String[] args) {
        SpringApplication.run(CallCenter.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(CallCenter.class);
    }

    @PostConstruct
    public void defaultAdmin(){
        User prevUser = userRepository.findByUserName(UserConst.DEFAULT_USERNAME);
        if(ObjectUtils.isEmpty(prevUser)){
            User user = new User();
            user.setUserName(UserConst.DEFAULT_USERNAME);
            user.setEmail("admin@gmail.com");
            user.setGender("male");
            user.setFullName("Administrator");
            user.setPhoneNumber("9888");
            user.setPasword(UserConst.DEFAULT_PASSWORD);
            user.setUserType(UserType.ADMIN);
            userRepository.save(user);
        }
    }

    public UserRepository getUserRepository() {
        return userRepository;
    }

    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
