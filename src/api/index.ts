import express, { Request, Response } from "express";

const router = express.Router();

router.get("/", (_: Request, res: Response) => {
  res.json({
    message: "well, wellcome to the backed api",
  });
});

export default router;
