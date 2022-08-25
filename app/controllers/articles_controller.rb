def article_params
  params.require(:article).permit(:title, :body, :photo)
end
