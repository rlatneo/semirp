package semi.project.jsnr.jibsa.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import semi.project.jsnr.jibsa.model.exception.JibsaException;
import semi.project.jsnr.jibsa.model.service.JibsaService;
import semi.project.jsnr.jibsa.model.vo.Jibsa;
import semi.project.jsnr.jibsa.model.vo.JibsaProfile;
import semi.project.jsnr.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class JibsaController {
	@Autowired	//의존성 주입
	private JibsaService jService;
//	private MemberService mService;
	
	
	
	@RequestMapping("enrollJibsa.js")
	public String enroll(@ModelAttribute Member m,
						Model model) {
		
			return "enrollJibsa";
	}
	
	@RequestMapping("enrollJibsaPage.js")
	public String enrollJibsaPage(@ModelAttribute Member m,
			Model model) {
		
		return "enrollJibsaPage";
	}
	
	@RequestMapping("enrollTrainerPage.js")
	public String enrollTrainerPage(@ModelAttribute Member m,
			Model model) {
		
		return "enrollTrainerPage";
	}
	
	@PostMapping("insertJibsa.js")
	public String insertJibsa(@ModelAttribute Jibsa j,  HttpSession session,
							Model model) {
		System.out.println(j);
		int result = jService.insertJibsa(j);
		
		if(result>0) {
			return "enrollJibsaResult";
		} else {
			throw new JibsaException("정보 수정 실패했습니다.");
		}
	}
	
	@RequestMapping("jibsa_Main.js")
	public String jibsa_Main() {
		return "jibsa_Main";
	}
	
	@GetMapping("jibsa_WorkTime.js")
	public String jibsa_WorkTime(HttpSession session,
			 					 Model model) {
		Member m = (Member)session.getAttribute("loginUser");
		
		Jibsa j = jService.selectJibsa(m.getMemberNo());
		
		String[] sArr = new String[7];
		String[] eArr = new String[7];
		for(int i = 0; i < 7; i++) {
			sArr[i] = (j.getAvailableHour().split(",")[i]).substring(0, 2)
					 +":"+(j.getAvailableHour().split(",")[i]).substring(2, 4);
		}
		for(int i = 0; i < 7; i++) {
			eArr[i] = (j.getAvailableHour().split(",")[i]).substring(4, 6)
					+":"+(j.getAvailableHour().split(",")[i]).substring(6, 8);
		}
		
		model.addAttribute("j", j);
		model.addAttribute("sArr", sArr);
		model.addAttribute("eArr", eArr);
		return "jibsa_WorkTime";
	}
	
	@PostMapping("jibsa_WorkTime_Update.js")
	public String jibsa_WorkTime_Update(@ModelAttribute Jibsa j) {
		
		int result = jService.updateJibsaAvailableHour(j);

		
		System.out.println(j);
		if(result > 0) {
			return "redirect:jibsa_Main.js";
		}else {
			System.out.println("집사 worktime 업데이트 에러");
			return "집사 worktime 업데이트 에러";
		}
		
	}
	
	@GetMapping("jibsaManagementSchedule.js")
	public String jibsaManagementSchedule() {
		return "jibsa_Management_Schedule";
	}
	
	@GetMapping("jibsaModifyInfo.js")
	public String jibsaModifyInfo(HttpSession session) {
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		
		Jibsa j = jService.selectJibsa(memberNo);
		
		session.setAttribute("jibsaInfo", j);
		return "jibsa_Modify_Info";
	}
	
	@GetMapping("jibsaModifySchedule.js")
	public String jibsaModifySchedule() {
		return "jibsa_Modify_Schedule";
	}
	
	@GetMapping("QnA.js")
	public String QNA() {
		return "jibsa_QnA";
	}

	@GetMapping("FAQ.js")
	public String FAQ() {
		return "jibsa_FAQ";
	}
	
	@GetMapping("premium.js")
	public String premium() {
		return "jibsa_Premium";
	}
	
	@GetMapping("review.js")
	public String review() {
		return "jibsa_Review";
	}
	
	@PostMapping("jibsaUpdateInfo.js")
	public String jibsaUpdateInfo(@ModelAttribute Jibsa j, @ModelAttribute Member m, Model model,
								  HttpSession session) {
		int result1 = jService.updateMemberInfo(m);
		int result2 = jService.updateJibsaInfo(j);
		
		if(result1 > 0 && result2 > 0) {
			Member updatedMember = (Member) session.getAttribute("loginUser");
	        updatedMember.setMemberEmail(m.getMemberEmail());
	        updatedMember.setMemberPhone(m.getMemberPhone());
	        updatedMember.setMemberAddress(m.getMemberAddress());
	        
	        model.addAttribute("loginUser", updatedMember);
			
			return "redirect:jibsaModifyInfo.js";
		} else {
			throw new JibsaException("정보 수정에 실패");
		}
	}
	
	@GetMapping("jibsaDeleteInfo.me")
	public String jibsaDeleteInfo(@ModelAttribute Member m, HttpSession session) {
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		
		int result = jService.deleteInfo(memberNo);
		
		if(result > 0) {
			m = (Member)session.getAttribute("loginUser");
			m.setIsJibsa("N");
			session.setAttribute("loginUser", m);
			
			return "redirect:member_User_Info.me";
		} else {
			throw new JibsaException("집사 탈퇴 실패");
		}
	}
	
}
