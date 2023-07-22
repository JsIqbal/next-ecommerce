## create next app

```bash
npx create-next-app@latest ecommerce-admin --typescript --tailwind --eslint
```

do not use src
use app router

after creating the app:

command :

```bash
npx shadcn-ui@latest init
```

configuration :

```bash
✔ Would you like to use TypeScript (recommended)? … no / yes
✔ Which style would you like to use? › Default
✔ Which color would you like to use as base color? › Slate
✔ Where is your global CSS file? … app/globals.css
✔ Would you like to use CSS variables for colors? … no / yes
✔ Where is your tailwind.config.js located? … tailwind.config.js
✔ Configure the import alias for components: … @/components
✔ Configure the import alias for utils: … @/lib/utils
✔ Are you using React Server Components? … no / yes
✔ Write configuration to components.json. Proceed? … yes
```

check out shadcn ui components and how to add them.

sign in to clerk documentation and add clerk to the project using this comand:

```bash
npm install @clerk/nextjs
```

add new file .env and paste the clerk authentification in there. make shure to gitignore the .env file

create another file naded middleware.ts and paste the middleware from the clerk documentation page

create organization routes inside the app folder and the routing system will be :

```vscode
app/sign-up/[[...sign-up]]/page.tsx
```
