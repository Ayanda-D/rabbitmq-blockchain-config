%%  The contents of this file are subject to the Mozilla Public License
%%  Version 1.1 (the "License"); you may not use this file except in
%%  compliance with the License. You may obtain a copy of the License
%%  at http://www.mozilla.org/MPL/
%%
%%  Software distributed under the License is distributed on an "AS IS"
%%  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%%  the License for the specific language governing rights and
%%  limitations under the License.
%%
%%  The Original Code is RabbitMQ Blockchain Configuration.
%%
%%  The Initial Developer of the Original Code is Erlang Solutions, Inc.
%%  Copyright (c) 2019 Erlang Solutions, Inc.  All rights reserved.
%%

-module(rabbit_blockchain_config_app).
-behaviour(application).

-export([start/0, start/2]).
-export([stop/0, stop/1]).

start()           -> rabbit_blockchain_config__sup:start_link(), ok.

stop()            -> ok.

start(normal, []) -> rabbit_blockchain_config__sup:start_link().

stop(_State)      -> ok.
