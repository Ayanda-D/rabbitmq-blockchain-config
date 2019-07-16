PROJECT = rabbitmq_blockchain_config
PROJECT_DESCRIPTION = RabbitMQ Blockchain Configuration Plugin
PROJECT_MOD = rabbit_blockchain_app

define PROJECT_APP_EXTRA_KEYS
	{broker_version_requirements, []}
endef

DEPS = rabbit rabbit_common

LOCAL_DEPS = crypto

TEST_DEPS = rabbitmq_ct_helpers rabbitmq_ct_client_helpers rabbitmq_amqp1_0 meck

DEP_EARLY_PLUGINS = rabbit_common/mk/rabbitmq-early-plugin.mk
DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk elvis_mk
dep_elvis_mk = git https://github.com/inaka/elvis.mk.git master


# FIXME: Use erlang.mk patched for RabbitMQ, while waiting for PRs to be
# reviewed and merged.

ERLANG_MK_REPO = https://github.com/rabbitmq/erlang.mk.git
ERLANG_MK_COMMIT = rabbitmq-tmp

include rabbitmq-components.mk
include erlang.mk
