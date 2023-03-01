require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "should create article" do
    visit articles_url
    click_on "New article"

    fill_in "Conclusion", with: @article.conclusion
    fill_in "Paragraph1", with: @article.paragraph1
    fill_in "Paragraph2", with: @article.paragraph2
    fill_in "Paragraph3", with: @article.paragraph3
    fill_in "Subtitle1", with: @article.subtitle1
    fill_in "Subtitle2", with: @article.subtitle2
    fill_in "Subtitle3", with: @article.subtitle3
    fill_in "Title", with: @article.title
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "should update Article" do
    visit article_url(@article)
    click_on "Edit this article", match: :first

    fill_in "Conclusion", with: @article.conclusion
    fill_in "Paragraph1", with: @article.paragraph1
    fill_in "Paragraph2", with: @article.paragraph2
    fill_in "Paragraph3", with: @article.paragraph3
    fill_in "Subtitle1", with: @article.subtitle1
    fill_in "Subtitle2", with: @article.subtitle2
    fill_in "Subtitle3", with: @article.subtitle3
    fill_in "Title", with: @article.title
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "should destroy Article" do
    visit article_url(@article)
    click_on "Destroy this article", match: :first

    assert_text "Article was successfully destroyed"
  end
end
