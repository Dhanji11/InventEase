package inventEase.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import inventEase.model.User;


@Component
public class UserDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	//create User
	@Transactional
	public void createUser(User user)
	{
		this.hibernateTemplate.save(user);
	}
	
	// load all users
	public List<User> getUsers()
	{
		List<User>users=this.hibernateTemplate.loadAll(User.class);
		return users;
	}
	
	//delete user
	@Transactional
	public void deleteUser(int uid)
	{
		User p = this.hibernateTemplate.get(User.class,uid);
		this.hibernateTemplate.delete(p);
	}
	
	// get a single user
	public User getUser(int uid)
	{
		return this.hibernateTemplate.get(User.class,uid);
	}
}
