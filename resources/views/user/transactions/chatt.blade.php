@extends('user.layout')
@section('title')
    Chat
@endsection
@section('content')
    <style>
        body {
            background-color: #74EBD5;
            background-image: linear-gradient(90deg, #74EBD5 0%, #9FACE6 100%);

            min-height: 100vh;
        }

        ::-webkit-scrollbar {
            width: 5px;
        }

        ::-webkit-scrollbar-track {
            width: 5px;
            background: #f5f5f5;
        }

        ::-webkit-scrollbar-thumb {
            width: 1em;
            background-color: #ddd;
            outline: 1px solid slategrey;
            border-radius: 1rem;
        }

        .text-small {
            font-size: 0.9rem;
        }

        .messages-box,
        .chat-box {
            height: 510px;
            overflow-y: scroll;
        }

        .rounded-lg {
            border-radius: 0.5rem;
        }

        input::placeholder {
            font-size: 0.9rem;
            color: #999;
        }

    </style>
    <div class="container py-5 px-4">

        <header class="text-center">
            <h1 class="display-4 text-white"> Chat</h1>

            </p>
        </header>

        <div class="row rounded-lg overflow-hidden shadow">

            <div class="col-12 px-0">

                <div class="px-4 py-5 chat-box bg-white">
                    @isset($room_dev)
                        @foreach ($room_dev as $room_dev)
                            <div class="media w-50 mb-3"><img src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
                                    alt="user" width="50" class="rounded-circle">

                                <div class="media-body ml-3">
                                    <div class="bg-light rounded py-2 px-3 mb-2">
                                        <p class="text-small mb-0 text-muted">{{ $room_dev->message }}</p>
                                    </div>
                                    <p class="small text-muted">12:00 PM | Aug 13</p>
                                </div>

                            </div>
                        @endforeach
                    @endisset
                    @isset($room_inves)
                        @foreach ($room_inves as $room_inves)
                            <div class="media w-50 ml-auto mb-3">
                                <div class="media-body">
                                    <div class="bg-primary rounded py-2 px-3 mb-2">
                                        <p class="text-small mb-0 text-white">{{ $room_inves->message }}</p>
                                    </div>
                                    <p class="small text-muted">{{ $room_inves->room_investor }}</p>
                                </div>
                            </div>
                        @endforeach
                    @endisset
                </div>
                <form action="{{ route('chat.store') }}" method="POST" class="bg-light">
                    @csrf
                    <div class="input-group">
                        <input type="text" name="message" placeholder="Type a message" aria-describedby="button-addon2"
                            class="form-control rounded-0 border-0 py-4 bg-light">
                        @isset($user)
                            @foreach ($user as $user)
                                <input type="text" hidden value="{{ $user->invester_id }}" name="invester_id">
                                <input type="text" hidden value="{{ $user->developer_id }}" name="developer_id">
                                <input type="text" hidden value="{{ $user->project_name }}" name="project_name">
                            @endforeach
                        @endisset

                        <div class="input-group-append">
                            <button id="button-addon2" type="submit" class="btn btn-link"> <i
                                    class="fa fa-paper-plane"></i></button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
@endsection
