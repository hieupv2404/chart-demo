.PHONY: check apply check-mpos apply-mpos apply-mpos-verbose

check:
	@ansible-playbook -K site.yml --check

apply:
	@ansible-playbook -K site.yml

check-mpos:
	@ansible-playbook -K site-mpos.yml --check

apply-mpos:
ifndef SERVICE
$(error SERVICE is not set)
endif
	@ansible-playbook -K site-mpos.yml --extra-vars "service=$(SERVICE)"

apply-mpos-verbose:
ifndef SERVICE
$(error SERVICE is not set)
endif
	@ansible-playbook -vvv -K site-mpos.yml --extra-vars "service=$(SERVICE)"