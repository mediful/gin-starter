FIG = docker-compose
EXEC_FILE = main.go

ifdef exec
    EXEC_FILE = ${exec}
endif

.PHONY: run
run:
	@$(FIG) up -d
	@$(FIG) exec app sh -c "if [ ! -f ./go.mod ]; then go mod init app; fi"
	@$(FIG) exec app sh -i -c "go run ${EXEC_FILE}"

.PHONY: stop
stop:
	@$(FIG) stop
