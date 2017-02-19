# Create Applicant
applicant = Applicant.create(
  name: 'John Smith',
  title: 'Full Stack Web Developer',
  email: 'js@email.com',
  location: 'New York, NY',
  summary: 'Versatile web developer with a knack for efficiency. I build things that others love to use.'
)


# Create Social profile
applicant.create_social_profile(
  linkedin: 'http://linkedin.com',
  github: 'http://github.com',
  slack: 'js@gmail.com',
  twitter: 'http://twitter.com'
)


# Create Educations
applicant.educations.create(
  school_name: 'Flatiron School',
  degree: 'Full Stack Web Development',
  description: 'Learned Full Stack Web Development using Ruby, Ruby on Rails, JavaScript, and other web technologies.',
  start_date: Date.parse('2016-06-20'),
  end_date: Date.parse('2016-12-20')
)

applicant.educations.create(
  school_name: 'UCLA',
  degree: 'MS in Project Management',
  description: 'Took advantage of the accelerated program in order to complete this degree in less than 2 years.',
  start_date: Date.parse('2014-06-01'),
  end_date: Date.parse('2016-01-01')
)


# Create Experiences
applicant.experiences.create(
  company_name: 'ACME Inc',
  position_title: 'Junior Developer',
  description: 'Some lorem ipsum text here. Blah blah blah.',
  start_date: Date.parse('2017-01-03'),
  end_date: Date.parse(Time.now.to_s)
)

applicant.experiences.create(
  company_name: 'XYZ Corp',
  position_title: 'Assistant',
  description: 'Volunteered/Interned as an assistant while learning project management best practices. Blah blah blah.',
  start_date: Date.parse('2016-01-03'),
  end_date: Date.parse('2016-03-12'),
  volunteer: true
)


# Create and assign Skills
skills = ['Ruby on Rails', 'Ruby', 'JavaScript', 'jQuery', 'React', 'Redux', 'SQL', 'PostgreSQL', 'HTML', 'CSS', 'Sass', 'Bootstrap', 'Node', 'Express', 'Ember', 'Angular', 'C++', 'Python', 'Django', 'PHP', 'Flask']

skills.each {|s| Skill.create(name: s)}

skillset = Skill.limit(7).order("RANDOM()")

applicant.skills << skillset


# Create Projects
applicant.projects.create(
  title: 'Awesome App',
  description: 'The most amazing app since Facebook!',
  url: 'http://awesomeapp.com',
  skills: 'Ruby on Rails, JavaScript, Bootstrap'
)

applicant.projects.create(
  title: 'Blah App',
  description: 'Name says it all!',
  url: 'http://blahapp.com',
  skills: 'Ruby on Rails, React, Material UI'
)
