---
layout: page
permalink: /projects/
title: "Projects"
nav: true
nav_order: 1
projects:
  - title: "Planning with Diffusion via Constraint Verification for Physics-Based Characters"
    description: "In Submission"
    image: "/assets/img/diff_planner_cover.png"
    publication: false

  - title: "Imitation-Free Reinforcement Learning with Masked Constraints for Walking Controllers"
    description: "In Submission"
    image: "/assets/img/walk_this_way_cover_img.png"
    publication: false

  - title: "Robot-to-Robot transfer for Quadrupedal Locomotion"
    description: "Course Research Project during Masters"
    image: "/assets/img/554x_project.png"
    links:
      paper: "https://drive.google.com/file/d/1monMVvvcgyGZP9xPdxwHLn6verm3G-gQ/view?usp=sharing"
      video: "https://www.youtube.com/watch?v=ei3YxlxRfYg"
    publication: false

  - title: "OpenSim2Real: An End-To-End Open Source Robotic Platform for Sim2Real Research"
    description: "Engineering Capstone Project"
    image: "/assets/img/OpenSim2Real.png"
    links:
      page: "https://opensim2real.github.io/os2r-superbuild/docs/index.html"
      video: "https://www.youtube.com/watch?v=6FDHketaaDo"
    publication: false

  - title: "An Empirical Study of Non-Uniform Sampling in Off-Policy Reinforcement Learning for Continuous Control"
    authors: 
      - Nicholas Ioannidis
      - Wilder Lavington
      - Mark Schmidt
    venue: "Deep RL Workshop NeurIPS 2021"
    image: "/assets/img/nus_project.jpg"
    links:
      paper: "https://openreview.net/forum?id=KvDedKtOX7B"
      video: "https://neurips.cc/virtual/2021/35778"
    publication: true
    bibkey: "ioannidis2021an"
---

<div class="projects-section">
  <div class="projects">
    {%- for project in page.projects %}
      <div class="project">
        <div class="project-content" style="display: flex; align-items: flex-start; margin-bottom: 20px;">
          <div class="project-thumbnail" style="margin-right: 15px; width: 150px;">
            <img src="{{ project.image }}" alt="Project Thumbnail for {{ project.title }}" style="width: 100%; border-radius: 5px;">
          </div>
          <div class="project-details">
            <h3 style="font-size: 1.2em; margin: 0; font-weight: bold;">{{ project.title }}</h3>

            <!-- If the project is a publication, display the authors and venue -->
            {%- if project.publication %}
              <p><strong>{{ project.authors[0] }}</strong>{%- for author in project.authors offset:1 -%}, {{ author }}{%- endfor %}</p>
              <p><em>{{ project.venue }}</em></p>
            {%- else %}
              <!-- If it's not published, display the description -->
              <p>{{ project.description }}</p>
            {%- endif %}
            
            <!-- Links -->
            <div class="project-links" style="margin-top: 10px;">
              {%- assign links = "" %}
              {%- if project.links.page %}
                {%- assign links = links | append: '<a href="' | append: project.links.page | append: '" target="_blank">Project Page</a>' %}
              {%- endif %}
              {%- if project.links.paper %}
                {%- if links != "" %}
                  {%- assign links = links | append: ' / ' %}
                {%- endif %}
                {%- assign links = links | append: '<a href="' | append: project.links.paper | append: '" target="_blank">Paper</a>' %}
              {%- endif %}
              {%- if project.links.video %}
                {%- if links != "" %}
                  {%- assign links = links | append: ' / ' %}
                {%- endif %}
                {%- assign links = links | append: '<a href="' | append: project.links.video | append: '" target="_blank">Video</a>' %}
              {%- endif %}
              {{ links | raw }}
            </div>
          </div>
        </div>
      </div>
    {%- endfor %}
  </div>
</div>
