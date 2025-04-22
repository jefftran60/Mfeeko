import { useEffect, useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import Image from "next/image"; // If you're not using Next.js, use a regular <img />

export default function SnoopyLove() {
  const [showSnoopy, setShowSnoopy] = useState(true);

  useEffect(() => {
    const timer = setTimeout(() => setShowSnoopy(false), 4000);
    return () => clearTimeout(timer);
  }, []);

  return (
    <div className="w-screen h-screen bg-pink-100 flex items-center justify-center overflow-hidden">
      <AnimatePresence>
        {showSnoopy ? (
          <motion.img
            key="snoopy"
            src="https://upload.wikimedia.org/wikipedia/en/5/53/Snoopy_Peanuts.png"
            alt="Snoopy"
            initial={{ x: "-100%" }}
            animate={{ x: "100%" }}
            exit={{ opacity: 0 }}
            transition={{ duration: 4 }}
            className="h-64 object-contain absolute bottom-10"
          />
        ) : (
          <motion.div
            key="message"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ duration: 1 }}
            className="text-center"
          >
            <h1 className="text-6xl font-bold text-red-500 animate-pulse">
              I Love You Malia ❤️
            </h1>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
