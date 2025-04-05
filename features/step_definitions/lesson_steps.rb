Given("the database is seeded with lessons") do
  Lesson.destroy_all
  ContentPage.destroy_all
  AssessmentPage.destroy_all

  lesson1 = Lesson.create(title: "Lesson 1")
  lesson2 = Lesson.create(title: "Lesson 2")
  lesson3 = Lesson.create(title: "Lesson 3")

  lesson1.content_pages.create(title: "Lesson 1 - Introduction", body: "This is the introduction to Lesson 1.")
  lesson1.content_pages.create(title: "Lesson 1 - Page 1", body: "This is Page 1 in Lesson 1.")
  lesson1.assessment_pages.create(title: "Lesson 1 - Assessment", content: "This is the assessment for Lesson 1.")

  lesson2.content_pages.create(title: "Lesson 2 - Introduction", body: "This is the introduction to Lesson 2.")
  lesson2.content_pages.create(title: "Lesson 2 - Page 1", body: "This is Page 1 in Lesson 2.")
  lesson2.assessment_pages.create(title: "Lesson 2 - Assessment", content: "This is the assessment for Lesson 2.")

  lesson3.content_pages.create(title: "Lesson 3 - Introduction", body: "This is the introduction to Lesson 3.")
  lesson3.content_pages.create(title: "Lesson 3 - Page 1", body: "This is Page 1 in Lesson 3.")
  lesson3.assessment_pages.create(title: "Lesson 3 - Assessment", content: "This is the assessment for Lesson 3.")

  puts "Seeded lessons and content pages!"
end
