"use client";

import { createPost } from "@/lib/fetchPost";
import { useRef } from "react";


export default function CreatePost() {
  const ref = useRef<HTMLFormElement>(null);

  return (
    <form
      ref={ref}
      action={ async (formData) => {
        await createPost(formData)
        ref.current?.reset()
      }}
    >
      <div>
        <label htmlFor="title">タイトル</label>
        <input type="text" name="title" id="title" required />
      </div>
      <div>
        <label htmlFor="body">内容</label>
        <textarea name="body" id="body" required />
      </div>
      <button>投稿</button>
    </form>
  )
}
