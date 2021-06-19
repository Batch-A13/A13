package Implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Bean.Accthird;
import com.Bean.Fileupl;
import com.Bean.OwnerReg;
import com.Bean.OwnerRequest;
import com.Bean.URequest;
import com.Bean.UserRegister;
import com.Database.Database;
import com.Interface.Inter;

public class Implementation implements Inter  {
	Connection con;
	@Override
	public int owb(OwnerReg or) {
		 int ob=0;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("INSERT INTO itjbco2.ownerreg VALUES(id,?,?,?,?,?)");
			pa.setString(1,or.getName());
			pa.setString(2,or.getEmail());
			pa.setString(3,or.getPhno());
			pa.setString(4,or.getPassword());
			pa.setString(5,or.getCpassword());
			ob=pa.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return ob;
		
	}
	@Override
	public boolean ol(OwnerReg owl) {
		// TODO Auto-generated method stub
		
		boolean log=false;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("SELECT * FROM `itjbco2`.`ownerreg` where email=? and password=? ");
			pa.setString(1,owl.getEmail());
			pa.setString(2,owl.getPassword());
			ResultSet rs=pa.executeQuery();
			log=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return log;
	}
	@Override
	public int upload(Fileupl up) {
		int ob=0;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("INSERT INTO itjbco2.fileupload VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			pa.setString(1, up.getUmail());
			pa.setString(2,up.getFilename() );
			pa.setString(3, up.getFiletype());
			pa.setString(4, up.getFilesize());
			pa.setString(5, up.getFilekey());
			pa.setString(6,up.getCspkey() );
			pa.setString(7,up.getFilecontent() );
			pa.setString(8,up.getEncrypt() );
			pa.setString(9,up.getDecryp() );
			pa.setString(10,up.getPhash());
			pa.setString(11,up.getAhash());
			ob=pa.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return ob;
	}
	@Override
	public boolean check(Fileupl upl) {
		// TODO Auto-generated method stub
		
		boolean che=false;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("SELECT * FROM `itjbco2`.`fileupload` where filename='"+upl.getFilename()+ "'");
			 
			ResultSet rs=pa.executeQuery();
			che=rs.next();
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return che;
	}
	@Override
	public int oreq(OwnerRequest or) {
		int ob=0;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("INSERT INTO itjbco2.ownerreq VALUES(id,?,?,?,?,?)");
			pa.setString(1, or.getFile());
			pa.setString(2, or.getOmail());
			pa.setString(3,or.getFileid());
			pa.setString(4,or.getAccept());
			pa.setString(5,or.getMessage());
			ob=pa.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return ob;
		 
	}
	@Override
	public int accept(OwnerRequest or) {
		int ob=0;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("UPDATE itjbco2.ownerreq o SET Accept='"+or.getAccept()+"' where id='"+or.getId()+"'");
			ob=pa.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return ob;
		 
	}
	@Override
	public int accept(Fileupl upl) {
		// TODO Auto-generated method stub
		int acc=0;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("DELETE FROM itjbco2.fileupload WHERE filename='"+upl.getFilename()+"'");
			acc=pa.executeUpdate();
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return acc;
	}
	@Override
	public int ulogin(UserRegister ur) {
		int ob=0;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("INSERT INTO itjbco2.userreg VALUES(id,?,?,?,?,?)");
			pa.setString(1,ur.getName());
			pa.setString(2, ur.getEmail() );
			pa.setString(3, ur.getPassword());
			pa.setString(4, ur.getConpassword());
			pa.setString(5, ur.getPhno());
			ob=pa.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return ob;
	}
	@Override
	public boolean ulog(UserRegister ur) {
		boolean log=false;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("SELECT * FROM `itjbco2`.`userreg` where email=? and password=? ");
			pa.setString(1,ur.getEmail());
			pa.setString(2,ur.getPassword());
			ResultSet rs=pa.executeQuery();
			log=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return log;
	}
	@Override
	public int urequest(URequest urq) {
	int ob=0;
	 con=Database.create();
	 try {
		PreparedStatement pa=con.prepareStatement("INSERT INTO itjbco2.userrequest VALUES(id,?,?,?,?,?,?,?)");
		pa.setString(1, urq.getFilname());
		pa.setString(2, urq.getFilekey());
		pa.setString(3, urq.getCspkey());
		pa.setString(4, urq.getOmail());
		pa.setString(5, urq.getUmail());
		pa.setString(6, urq.getPrehash());
		pa.setString(7, urq.getAfterhash());
		ob=pa.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	return ob;
	}
	@Override
	public int taccept(Accthird ac) {
		int ob=0;
		 con=Database.create();
		 try {
			PreparedStatement pa=con.prepareStatement("INSERT INTO itjbco2.thirdaccept VALUES(id,?,?,?,?,?,?,?)");
			pa.setString(1, ac.getFilename());
			pa.setString(2, ac.getFilekey());
			pa.setString(3, ac.getCspkey());
			pa.setString(4, ac.getOmail());
			pa.setString(5, ac.getUmail());
			pa.setString(6, ac.getPrehash());
			pa.setString(7, ac.getAfterhah());
			ob=pa.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return ob;
	}

}
