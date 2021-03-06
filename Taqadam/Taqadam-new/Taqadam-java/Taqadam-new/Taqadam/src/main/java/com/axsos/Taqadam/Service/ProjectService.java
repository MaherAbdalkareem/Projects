package com.axsos.Taqadam.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.axsos.Taqadam.Models.Project;
import com.axsos.Taqadam.Models.User;
import com.axsos.Taqadam.Repository.ProjectRepository;

@Service
public class ProjectService {
	private final ProjectRepository projectRepository;

	public ProjectService(ProjectRepository projectRepository) {
		
		this.projectRepository = projectRepository;
	}
	
	// returns all the projects
    public List<Project> allProjects() {
        return projectRepository.findAll();
    }
    // create a project
    public Project createProject(Project b) {
        return projectRepository.save(b);
    }
    // retrieves a project
    public Project findProject(Long id) {
        Optional<Project> optionalProject = projectRepository.findById(id);
        if(optionalProject.isPresent()) {
            return optionalProject.get();
        } else {
            return null;
        }
}
//  edit information for project :
  public void updateProject(Project project , Long id) {
  	Project editProject = projectRepository.findById(id).orElse(null);
    	assert editProject !=null;
    	editProject.setTitle(project.getTitle());
    	editProject.setField(project.getField());
    	editProject.setDescription(project.getDescription());
    	editProject.setTech(project.getTech());
    	projectRepository.save(editProject);    	
    }
  public List<Project> allProjectsforThisUser(Long id){
	  return projectRepository.allPrjectsforThisUserById(id);
  }
  public List<Project> findTop(){
	  return projectRepository.findTop3ByOrderByAvgDesc();
  }
}
