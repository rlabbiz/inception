all :
	@mkdir -p /home/rlabbiz/mariadb/ /home/rlabbiz/wordpress/
	@docker-compose -f srcs/docker-compose.yml up -d --build

clean :
	@docker-compose -f srcs/docker-compose.yml down

fclean : clean
	@docker system prune -af
	@rm -rf /home/rlabbiz/mariadb/ /home/rlabbiz/wordpress/

re : clean all