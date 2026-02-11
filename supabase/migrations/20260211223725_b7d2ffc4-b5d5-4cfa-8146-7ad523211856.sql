
-- Drop the overly permissive public read policy
DROP POLICY IF EXISTS "Anyone can read app settings" ON public.app_settings;

-- Create a new policy restricting reads to authenticated users
CREATE POLICY "Authenticated users can read app settings"
ON public.app_settings
FOR SELECT
TO authenticated
USING (true);
