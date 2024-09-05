NAME = Inception
VOLUME_DIR = /home/naterrie/data
DC = docker compose

all: $(NAME)

$(NAME): $(VOLUME_DIR)
	$(DC) -f srcs/docker-compose.yml up --build

down:
	$(DC) -f srcs/docker-compose.yml down

restart: down all

$(VOLUME_DIR):
	mkdir -p $(VOLUME_DIR)/mariadb $(VOLUME_DIR)/wordpress

clean:
	$(DC) -f srcs/docker-compose.yml down -v --rmi all

fclean: clean
	docker system prune -f --all
	sudo rm -rf $(VOLUME_DIR)

re: fclean all

.PHONY: all clean fclean re down
