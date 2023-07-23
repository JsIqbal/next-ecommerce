# Complete Documentation of this project!

-   Step -1

## create next app

```bash
npx create-next-app@latest ecommerce-admin --typescript --tailwind --eslint
```

do not use src
use app router

```bash
$ npx create-next-app@latest next-portfolio --typescript --tailwind --eslint
√ Would you like to use `src/` directory? ... No / Yes = No
√ Would you like to use App Router? (recommended) ... No / Yes = Yes
√ Would you like to customize the default import alias? ... No / Yes = No
```

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

---

-   step -2

create store:

use shadcn:

```bash
npx shadcn-ui@latest add dialog
```

add zustand for state management:

```bash
npm install zustand
```

create the hooks/use-store-modal.tsx and configure the store for modal

create providers folder in root to access any component or modal from anywhere the project

create modal-provider.tsx and learn the logic about hydration and dyhydration

learned : global reusable modal, uses global store

---

-   step -3

Form, form validate:

react-hook-form and zod

add shadcn form:

```bash
npx shadcn-ui@latest add form
```

add shadcn input:

```bash
npx shadcn-ui@latest add input
```

---

-   step -4

install prisma as a dev dependency

```bash
npm i -D prisma
npm i @prisma/client
```

initialize prisma:

```bash
npx prisma init
```

create lib for prisma db

setup planetscale
sign in to planetscale and create a database and wait for initialization
click connect to your database:
connect to prisma and copy the .env file and paste it in database url
copy the shema.prisma from the planetscale and paste it in schema.prisma

configure the schema.prisma and create models

generate the prisma models:

```bash
npx prisma generate
```

we can do crud operation with prisma

check if we successfully set up our database string:

```bash
npx prisma db push
```

troubleshoot:
check .env = DATABASE_URL

create api route

install axios and use it in store-modal

for troubleshooting more : generate new configuration in planetscale and reconfigure the .env url and schema.config. afterwards run this commands:

```bash
npx prisma generate
npx prisma db push
```

---

-   step -5

We will create Dashboard organization and create a layout for it

configure in root organization as well

### most important

-   Tutorial link : to uderstand the project flow

```link
https://youtu.be/5miHyP6lExg?t=6939
```

delte the prisma database records:

```bash
npx prisma migrate reset

npx prisma generate

npx prisma db push
```

rehydrations again.

redirect to dashboard after creating a store

---

-   step -6 : Admin Navigation

Create navbar component for admin dashboard. this will be a part of the dashboard layout.

navigation implementation [ComboBox] from shadcn:

```bash
npx shadcn-ui@latest add popover

npx shadcn-ui@latest add command
```

revise type and interface
revise about 'use client'

navbar store switcher find store functionality :

Tutorial Link to understand:

```link
https://youtu.be/5miHyP6lExg?t=8597
```

feel the power of zustand store management and see how the modal is triggered from the navigation + Create Store Button

---

-   Step - 7 : part 1: Add the update settings for store

create settings folder inside dashboard organization and create a page for settings

-   We always have the params in our server components \*

Understanding the flow inside settings-form.tsx:

```link
https://youtu.be/5miHyP6lExg?t=10717
```
