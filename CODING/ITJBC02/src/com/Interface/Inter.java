package com.Interface;

import com.Bean.Accthird;
import com.Bean.Fileupl;
import com.Bean.OwnerReg;
import com.Bean.OwnerRequest;
import com.Bean.URequest;
import com.Bean.UserRegister;

public interface Inter {
public int owb(OwnerReg or);

public boolean ol(OwnerReg owl);

public int upload(Fileupl up);

public boolean check(Fileupl upl);

public int oreq(OwnerRequest or);

public int accept(OwnerRequest or);

public int accept(Fileupl upl);

public int ulogin(UserRegister ur);

public boolean ulog(UserRegister ur);

public int urequest(URequest urq);

public int taccept(Accthird ac);
}
