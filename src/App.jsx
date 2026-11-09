import { useState } from 'react'

function App() {
  const [count, setCount] = useState(0)

  return (
    <div className="min-h-svh bg-slate-950 text-slate-100">
      <div className="mx-auto flex min-h-svh max-w-5xl flex-col items-center justify-center gap-10 px-6 py-16">
        <span className="rounded-full border border-cyan-400/30 bg-cyan-400/10 px-4 py-1.5 text-sm font-medium text-cyan-300">
          React + Vite + Tailwind CSS
        </span>

        <h1 className="max-w-2xl text-center text-5xl font-bold tracking-tight sm:text-6xl">
          Frontend siap{' '}
          <span className="bg-gradient-to-r from-cyan-400 to-violet-400 bg-clip-text text-transparent">
            dikembangkan
          </span>
        </h1>

        <p className="max-w-xl text-center text-lg text-slate-400">
          Tailwind CSS v4 sudah aktif lewat plugin Vite. Edit{' '}
          <code className="rounded bg-slate-800 px-1.5 py-0.5 text-sm text-cyan-300">
            src/App.jsx
          </code>{' '}
          untuk mulai.
        </p>

        <div className="flex flex-wrap items-center justify-center gap-4">
          <button
            type="button"
            onClick={() => setCount((count) => count + 1)}
            className="rounded-lg bg-cyan-500 px-6 py-3 font-semibold text-slate-950 transition hover:bg-cyan-400 active:scale-95"
          >
            Klik aku: {count}
          </button>
          <a
            href="https://tailwindcss.com/docs"
            target="_blank"
            rel="noreferrer"
            className="rounded-lg border border-slate-700 px-6 py-3 font-semibold text-slate-200 transition hover:border-slate-500 hover:bg-slate-900"
          >
            Dokumentasi Tailwind
          </a>
        </div>

        <div className="grid w-full gap-4 sm:grid-cols-3">
          {[
            { title: 'Vite 8', desc: 'Dev server super cepat' },
            { title: 'React 19', desc: 'UI modern berbasis komponen' },
            { title: 'Tailwind 4', desc: 'Utility-first styling' },
          ].map((item) => (
            <div
              key={item.title}
              className="rounded-xl border border-slate-800 bg-slate-900/60 p-5"
            >
              <h2 className="font-semibold text-white">{item.title}</h2>
              <p className="mt-1 text-sm text-slate-400">{item.desc}</p>
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}

export default App
