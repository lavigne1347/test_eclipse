package member.controller;
import java.util.ArrayList;
import member.vo.*;
public interface ControllerInterface {

	public boolean insert(Member member);
	public ArrayList<Member> selectAll(); 
	public boolean delete(Member member); 
	public boolean update(Member member); 
	public Member selectId(String id); 
	public int selectMember(Member member);

	
}
