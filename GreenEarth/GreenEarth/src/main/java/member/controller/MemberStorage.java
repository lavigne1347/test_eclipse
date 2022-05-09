package member.controller;
import java.util.ArrayList;
import member.vo.*;
public class MemberStorage implements ControllerInterface {
	private static ArrayList<Member> memberList = new ArrayList<Member>();

	@Override
	public boolean insert(Member member) {
		// TODO Auto-generated method stub
		return memberList.add(member);
	}

	@Override
	public ArrayList<Member> selectAll() {
		// TODO Auto-generated method stub
		return memberList;
	}

	@Override
	public boolean delete(Member member) {
		// TODO Auto-generated method stub
		return memberList.remove(member);
	}

	@Override
	public boolean update(Member member) {
		int i = selectMember(member);
		if(i == -1) {
		return false;
	    }else {
	    	memberList.set(i, member); 
	    	return true;
	    }
	}
	@Override
	public Member selectId(String id) {
		   for(Member m : memberList) { 
			   if(m.getId().equals(id)) { 
				   return m; 
			    } 
			}
		    return null;
	}

	@Override
	public int selectMember(Member member) {
		return memberList.indexOf(member);
	}

}
