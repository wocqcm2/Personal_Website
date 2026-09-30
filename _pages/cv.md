---
layout: archive
title: "Curriculum Vitae"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

## Education

### The Hong Kong University of Science and Technology

PhD in Computer Science, 2026–2030 (expected).

Advisor: [Prof. Yangqiu Song](https://www.cse.ust.hk/~yqsong/)

### Cornell University

Master's degree in Computer Science, August 2025–May 2026. GPA: 3.91/4.30.

### The Ohio State University

BS in Computer Science and Engineering, Minor in Mathematics, August 2021–May 2025. GPA: 3.96/4.00.

## Experience

### Research Assistant — The Ohio State University

January–June 2025 · Supervisor: Prof. Jingbo Meng

- Studied user–AI interaction by analyzing conversations with large language models.
- Built a research platform with a React and MUI frontend, NestJS APIs, and MySQL storage. Developed bot roles for the experiments and helped deploy the platform on AWS EC2 with OSU's OTDI team.

### Teaching Assistant — The Ohio State University

September 2022–June 2025 · Profs. Alfred Rossi and KT Vandergriff

- Supported Discrete Mathematics and Algorithms courses by grading assignments, quizzes, and projects and tutoring students.

## Research

Reinforcement learning, GraphRAG, and tool discovery for large language model agents.

## Publications

{% assign sorted_publications = site.publications | sort: 'date' | reverse %}
<ul>
{% for post in sorted_publications %}
  <li>{{ post.citation }} <a href="{{ post.link }}">Paper</a></li>
{% endfor %}
</ul>

## Honors

- Hong Kong PhD Fellowship (HKPF), 2026.
- Dean's List, The Ohio State University, every spring and autumn semester from Spring 2022 through Spring 2025.
