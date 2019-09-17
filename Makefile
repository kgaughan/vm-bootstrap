default:

clean:
	find . -name \*.retry -type f -delete
	find . -name \*.orig -type f -delete

bootstrap:
	ansible-playbook -i hosts bootstrap.yml --ask-pass

.PHONY: default clean bootstrap
