FIG = docker-compose
EXEC_FILE = main.go

ifdef exec
    EXEC_FILE = ${exec}
endif

.PHONY: run
run:
	@$(FIG) up -d
	@$(FIG) exec app sh -i -c "go run ${EXEC_FILE}"

.PHONY: stop
stop:
	@$(FIG) stop
