class ArticlesController < ApplicationController
<<<<<<< HEAD
    include ArticlesHelper
=======
>>>>>>> d292fa03db7ef04ceddf0f68bb512a10b9c3ddb5
    http_basic_authenticate_with name: "jesse", password: "hodge",
        except: [:index, :show]
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def edit 
<<<<<<< HEAD
        @article = Article.find(params[:id])
=======
        @article.find(params[:id])
>>>>>>> d292fa03db7ef04ceddf0f68bb512a10b9c3ddb5
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else 
            render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to articles_path
    end
<<<<<<< HEAD
=======

    private 
        def article_params
            params.require(:article).permit(:title, :text)
        end
>>>>>>> d292fa03db7ef04ceddf0f68bb512a10b9c3ddb5
end
