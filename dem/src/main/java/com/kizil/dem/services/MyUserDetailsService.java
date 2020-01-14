package com.kizil.dem.services;

import com.kizil.dem.model.User;
import com.kizil.dem.model.UserPrincipal;
import com.kizil.dem.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService {

        @Autowired 
        private UserRepo repo;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return null;
    }

    /*@Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = repo.findByUsername(username);

        if(user==null)
            throw new UsernameNotFoundException("Bulunamadi SORUNNNNN");


        return new UserPrincipal(user);
    }*/
}
