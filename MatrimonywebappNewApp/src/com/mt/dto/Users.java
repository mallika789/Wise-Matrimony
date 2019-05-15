package com.mt.dto;

import java.util.Date;
import java.util.HashSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.mt.dto.Hobbies;
import com.mt.dto.Matches;

@Entity
public class Users {
	@Id@GeneratedValue
	private int userId;
	
	@Column(length=25)
	private String firstName;
	
	@Column(length=25)
	private String lastName; 
	
	@Column(length=25)
	private String userName;
	
	@Column(length=25)
	private String mailId;
	
	@Column(length=25)
	private String password;
	
	@Column(length=25)
	private String confirmPassword;
	
	@Column(length=25)
	private String profilePath;  

	@Column(length=25)
	private String aadharNum;
	
	@Column(length=25)
	private String gender;
	
	@Temporal(TemporalType.DATE)
	private Date dob;
	
	@Column(length=25)
	private int age;
	
	@Column(length=25)
	private String maritalStatus;
	
	@Column(length=25)
	private String height;
	
	@Column(length=25)
	private String weight;
	
	@Column(length=25)
	private String familyStatus;
	
	@Column(length=25)
	private String familyValues;
	
	@Column(length=25)
	private String familyType;
	
	@Column(length=25)
	private String higherEducation;
	
	@Column(length=25)
	private String employedIn;
	
	@Column(length=25)
	private String occupation;
	
	@Column(length=25)
	private String annualIncome;
	
	@Column(length=25)
	private String religion;
	
	@Column(length=25)
	private String caste;
	
	@Column(length=25)
	private String subcaste;
	
	@Column(length=25)
	private long phoneNum;
	
	@Column(length=25)
	private String motherTongue;

	@Column(length=25)
	private String bodyType;
		
	@Column(length=25)
	private String occupationInDetail; 
	
	@Column(length=25)
	private String educationInDetail;
	
	@Column(length=25)
	private String fatherStatus;
	
	@Column(length=25)
	private String motherStatus;
	
	@Column(length=25)
	private String noOfBros;
	
	@Column(length=25)
	private String broStatus;
	
	@Column(length=25)
	private String noOfSis;
	
	@Column(length=25)
	private String sisStatus;
	
	@Column(length=25)
	private String familyLocation;
	
	@Column(length=25)
	private String eatingHabit;
	
	@Column(length=25)
	private String drinkingHabit;
	
	@Column(length=25)
	private String smokingHabit;
	
	@Column(length=25)
	private String music;
	
	@Column(length=25)
	private String country;
	
	@Column(length=25)
	private String state;
	
	@Column(length=25)
	private String district;
	
	@Column(length=25)
	private String city;
	
	//@Column(length=25)
	//private String hobbies;
	
	/*@ElementCollection
	@JoinTable(name="Hobbies",joinColumns=@JoinColumn(name="USER_ID")) */
	@ElementCollection
	@JoinTable(name="Hobbies",joinColumns=@JoinColumn(name="USER_ID"))
	private List<Hobbies> hobbyies =new ArrayList<Hobbies>();
	
	/*@OneToMany(mappedBy="user")
	private List <Address> addressList=new ArrayList<Address>();*/

	
	/*@Embedded
	private Hobbies hobbies;*/
	
	/*@ElementCollection
	private Set<Address> addressList = new HashSet();*/
	
	/*@OneToOne(mappedBy="users")
	private Matches matches = new Matches();*/
	
	public String getOccupationInDetail() {
		return occupationInDetail;
	}

	public void setOccupationInDetail(String occupationInDetail) {
		this.occupationInDetail = occupationInDetail;
	}

	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Users(){
		super();
	}	
		public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCPassword() {
		return password;
	}
	public void setCPassword(String cPassword) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getFamilyStatus() {
		return familyStatus;
	}
	public void setFamilyStatus(String familyStatus) {
		this.familyStatus = familyStatus;
	}
	public String getFamilyValues() {
		return familyValues;
	}
	public void setFamilyValues(String familyValues) {
		this.familyValues = familyValues;
	}
	public String getFamilyType() {
		return familyType;
	}
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getMotherTongue() {
		return motherTongue;
	}

	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}

	public void setFamilyType(String familyType) {
		this.familyType = familyType;
	}
	public String getHigherEducation() {
		return higherEducation;
	}
	public void setHigherEducation(String higherEducation) {
		this.higherEducation = higherEducation;
	}
	public String getEmployedIn() {
		return employedIn;
	}
	public void setEmployedIn(String employedIn) {
		this.employedIn = employedIn;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getAnnualIncome() {
		return annualIncome;
	}
	public void setAnnualIncome(String annualIncome) {
		this.annualIncome = annualIncome;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getSubcaste() {
		return subcaste;
	}
	public void setSubcaste(String subcaste) {
		this.subcaste = subcaste;
	}
	
	
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	/*public String getImageId() {
		return imageId;
	}
	public void setImageId(String imageId) {
		this.imageId = imageId;
	}*/
	public long getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(long phoneNum) {
		this.phoneNum = phoneNum;
	}
	
	public String getBodyType() {
		return bodyType;
	}
	
	

	public String getAadharNum() {
		return aadharNum;
	}

	public void setAadharNum(String aadharNum) {
		this.aadharNum = aadharNum;
	}

	/*public Hobbies getHobbies() {
		return hobbies;
	}

	public void setHobbies(Hobbies hobbies) {
		this.hobbies = hobbies;
	}*/
	public List<Hobbies> getHobbyies() {
		return hobbyies;
	}

	public void setHobbyies(List<Hobbies> hobbyies) {
		this.hobbyies = hobbyies;
	}
		

	/*public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}*/

	public void setBodyType(String bodyType) {
		this.bodyType = bodyType;
	}

	public String getFatherStatus() {
		return fatherStatus;
	}

	public void setFatherStatus(String fatherStatus) {
		this.fatherStatus = fatherStatus;
	}

	public String getMotherStatus() {
		return motherStatus;
	}

	public void setMotherStatus(String motherStatus) {
		this.motherStatus = motherStatus;
	}

	public String getNoOfBros() {
		return noOfBros;
	}

	public void setNoOfBros(String noOfBros) {
		this.noOfBros = noOfBros;
	}

	public String getBroStatus() {
		return broStatus;
	}

	public void setBroStatus(String broStatus) {
		this.broStatus = broStatus;
	}

	public String getNoOfSis() {
		return noOfSis;
	}

	public void setNoOfSis(String noOfSis) {
		this.noOfSis = noOfSis;
	}

	public String getSisStatus() {
		return sisStatus;
	}

	public void setSisStatus(String sisStatus) {
		this.sisStatus = sisStatus;
	}

	public String getFamilyLocation() {
		return familyLocation;
	}

	public void setFamilyLocation(String familyLocation) {
		this.familyLocation = familyLocation;
	}

	public String getEatingHabit() {
		return eatingHabit;
	}

	public void setEatingHabit(String eatingHabit) {
		this.eatingHabit = eatingHabit;
	}

	public String getDrinkingHabit() {
		return drinkingHabit;
	}

	public void setDrinkingHabit(String drinkingHabit) {
		this.drinkingHabit = drinkingHabit;
	}

	public String getSmokingHabit() {
		return smokingHabit;
	}

	public void setSmokingHabit(String smokingHabit) {
		this.smokingHabit = smokingHabit;
	}
	
	
	public String getEducationInDetail() {
		return educationInDetail;
	}

	public void setEducationInDetail(String educationInDetail) {
		this.educationInDetail = educationInDetail;
	}

	public Users(String firstName, String lastName, String userName, String password,String confirmPassword, String gender) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.gender = gender;
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Users [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", userName="
				+ userName + ", mailId=" + mailId + ", password=" + password + ", confirmPassword=" + confirmPassword
				+ ", aadharNum=" + aadharNum + ", gender=" + gender + ", dob=" + dob + ", age=" + age
				+ ", maritalStatus=" + maritalStatus + ", height=" + height + ", weight=" + weight + ", familyStatus="
				+ familyStatus + ", familyValues=" + familyValues + ", familyType=" + familyType + ", higherEducation="
				+ higherEducation + ", employedIn=" + employedIn + ", occupation=" + occupation + ", annualIncome="
				+ annualIncome + ", religion=" + religion + ", caste=" + caste + ", subcaste=" + subcaste
				+ ", phoneNum=" + phoneNum + ", motherTongue=" + motherTongue + ", bodyType=" + bodyType
				+ ", occupationInDetail=" + occupationInDetail + ", educationInDetail=" + educationInDetail
				+ ", fatherStatus=" + fatherStatus + ", motherStatus=" + motherStatus + ", noOfBros=" + noOfBros
				+ ", broStatus=" + broStatus + ", noOfSis=" + noOfSis + ", sisStatus=" + sisStatus + ", familyLocation="
				+ familyLocation + ", eatingHabit=" + eatingHabit + ", drinkingHabit=" + drinkingHabit
				+ ", smokingHabit=" + smokingHabit + ", music=" + music + ", country=" + country + ", state=" + state
				+ ", district=" + district + ", city=" + city + ", hobbyies=" + hobbyies + "]";
	}
	
	
	

	
}
