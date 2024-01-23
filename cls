[33mcommit e62c289cc2830122df64f951e038950ca581faf5[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: JonathanEsteves <jonathan.dev_93@outlook.com>
Date:   Sun Jan 21 18:28:46 2024 -0300

    Projeto Django subindo para o GitHub

[1mdiff --git a/.vscode/settings.json b/.vscode/settings.json[m
[1mnew file mode 100644[m
[1mindex 0000000..f9dfd39[m
[1m--- /dev/null[m
[1m+++ b/.vscode/settings.json[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "python.pythonPath": "/Users/Ruthp/"[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/db.sqlite3 b/db.sqlite3[m
[1mnew file mode 100644[m
[1mindex 0000000..d24ff6d[m
Binary files /dev/null and b/db.sqlite3 differ
[1mdiff --git a/manage.py b/manage.py[m
[1mnew file mode 100644[m
[1mindex 0000000..55723d5[m
[1m--- /dev/null[m
[1m+++ b/manage.py[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m#!/usr/bin/env python[m
[32m+[m[32m"""Django's command-line utility for administrative tasks."""[m
[32m+[m[32mimport os[m
[32m+[m[32mimport sys[m
[32m+[m
[32m+[m
[32m+[m[32mdef main():[m
[32m+[m[32m    """Run administrative tasks."""[m
[32m+[m[32m    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "study_async.settings")[m
[32m+[m[32m    try:[m
[32m+[m[32m        from django.core.management import execute_from_command_line[m
[32m+[m[32m    except ImportError as exc:[m
[32m+[m[32m        raise ImportError([m
[32m+[m[32m            "Couldn't import Django. Are you sure it's installed and "[m
[32m+[m[32m            "available on your PYTHONPATH environment variable? Did you "[m
[32m+[m[32m            "forget to activate a virtual environment?"[m
[32m+[m[32m        ) from exc[m
[32m+[m[32m    execute_from_command_line(sys.argv)[m
[32m+[m
[32m+[m
[32m+[m[32mif __name__ == "__main__":[m
[32m+[m[32m    main()[m
[1mdiff --git a/study_async/__init__.py b/study_async/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/study_async/__pycache__/__init__.cpython-311.pyc b/study_async/__pycache__/__init__.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..f1964d8[m
Binary files /dev/null and b/study_async/__pycache__/__init__.cpython-311.pyc differ
[1mdiff --git a/study_async/__pycache__/settings.cpython-311.pyc b/study_async/__pycache__/settings.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..a86a449[m
Binary files /dev/null and b/study_async/__pycache__/settings.cpython-311.pyc differ
[1mdiff --git a/study_async/__pycache__/urls.cpython-311.pyc b/study_async/__pycache__/urls.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..84bf4a2[m
Binary files /dev/null and b/study_async/__pycache__/urls.cpython-311.pyc differ
[1mdiff --git a/study_async/__pycache__/wsgi.cpython-311.pyc b/study_async/__pycache__/wsgi.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..614bef6[m
Binary files /dev/null and b/study_async/__pycache__/wsgi.cpython-311.pyc differ
[1mdiff --git a/study_async/asgi.py b/study_async/asgi.py[m
[1mnew file mode 100644[m
[1mindex 0000000..79f8de5[m
[1m--- /dev/null[m
[1m+++ b/study_async/asgi.py[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m"""[m
[32m+[m[32mASGI config for study_async project.[m
[32m+[m
[32m+[m[32mIt exposes the ASGI callable as a module-level variable named ``application``.[m
[32m+[m
[32m+[m[32mFor more information on this file, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/5.0/howto/deployment/asgi/[m
[32m+[m[32m"""[m
[32m+[m
[32m+[m[32mimport os[m
[32m+[m
[32m+[m[32mfrom django.core.asgi import get_asgi_application[m
[32m+[m
[32m+[m[32mos.environ.setdefault("DJANGO_SETTINGS_MODULE", "study_async.settings")[m
[32m+[m
[32m+[m[32mapplication = get_asgi_application()[m
[1mdiff --git a/study_async/settings.py b/study_async/settings.py[m
[1mnew file mode 100644[m
[1mindex 0000000..af9cc8c[m
[1m--- /dev/null[m
[1m+++ b/study_async/settings.py[m
[36m@@ -0,0 +1,118 @@[m
[32m+[m[32mfrom pathlib import Path[m
[32m+[m[32mimport os[m
[32m+[m
[32m+[m[32m# Build paths inside the project like this: BASE_DIR / 'subdir'.[m
[32m+[m[32mBASE_DIR = Path(__file__).resolve().parent.parent[m
[32m+[m
[32m+[m
[32m+[m[32m# Quick-start development settings - unsuitable for production[m
[32m+[m[32m# See https://docs.djangoproject.com/en/5.0/howto/deployment/checklist/[m
[32m+[m
[32m+[m[32m# SECURITY WARNING: keep the secret key used in production secret![m
[32m+[m[32mSECRET_KEY = "django-insecure-jcyy666r3!s1*=y6#k(vzmfm#wrm)rd0$0!-vris31qm*ug_=s"[m
[32m+[m
[32m+[m[32m# SECURITY WARNING: don't run with debug turned on in production![m
[32m+[m[32mDEBUG = True[m
[32m+[m
[32m+[m[32mALLOWED_HOSTS = [][m
[32m+[m
[32m+[m
[32m+[m[32m# Application definition[m
[32m+[m
[32m+[m[32mINSTALLED_APPS = [[m
[32m+[m[32m    "django.contrib.admin",[m
[32m+[m[32m    "django.contrib.auth",[m
[32m+[m[32m    "django.contrib.contenttypes",[m
[32m+[m[32m    "django.contrib.sessions",[m
[32m+[m[32m    "django.contrib.messages",[m
[32m+[m[32m    "django.contrib.staticfiles",[m
[32m+[m[32m    'usuarios',[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mMIDDLEWARE = [[m
[32m+[m[32m    "django.middleware.security.SecurityMiddleware",[m
[32m+[m[32m    "django.contrib.sessions.middleware.SessionMiddleware",[m
[32m+[m[32m    "django.middleware.common.CommonMiddleware",[m
[32m+[m[32m    "django.middleware.csrf.CsrfViewMiddleware",[m
[32m+[m[32m    "django.contrib.auth.middleware.AuthenticationMiddleware",[m
[32m+[m[32m    "django.contrib.messages.middleware.MessageMiddleware",[m
[32m+[m[32m    "django.middleware.clickjacking.XFrameOptionsMiddleware",[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mROOT_URLCONF = "study_async.urls"[m
[32m+[m
[32m+[m[32mTEMPLATES = [[m
[32m+[m[32m    {[m
[32m+[m[32m        "BACKEND": "django.template.backends.django.DjangoTemplates",[m
[32m+[m[32m        "DIRS": [os.path.join(BASE_DIR, 'templates')],[m
[32m+[m[32m        "APP_DIRS": True,[m
[32m+[m[32m        "OPTIONS": {[m
[32m+[m[32m            "context_processors": [[m
[32m+[m[32m                "django.template.context_processors.debug",[m
[32m+[m[32m                "django.template.context_processors.request",[m
[32m+[m[32m                "django.contrib.auth.context_processors.auth",[m
[32m+[m[32m                "django.contrib.messages.context_processors.messages",[m
[32m+[m[32m            ],[m
[32m+[m[32m        },[m
[32m+[m[32m    },[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mWSGI_APPLICATION = "study_async.wsgi.application"[m
[32m+[m
[32m+[m
[32m+[m[32m# Database[m
[32m+[m[32m# https://docs.djangoproject.com/en/5.0/ref/settings/#databases[m
[32m+[m
[32m+[m[32mDATABASES = {[m
[32m+[m[32m    "default": {[m
[32m+[m[32m        "ENGINE": "django.db.backends.sqlite3",[m
[32m+[m[32m        "NAME": BASE_DIR / "db.sqlite3",[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m# Password validation[m
[32m+[m[32m# https://docs.djangoproject.com/en/5.0/ref/settings/#auth-password-validators[m
[32m+[m
[32m+[m[32mAUTH_PASSWORD_VALIDATORS = [[m
[32m+[m[32m    {[m
[32m+[m[32m        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",[m
[32m+[m[32m    },[m
[32m+[m[32m][m
[32m+[m
[32m+[m
[32m+[m[32m# Internationalization[m
[32m+[m[32m# https://docs.djangoproject.com/en/5.0/topics/i18n/[m
[32m+[m
[32m+[m[32mLANGUAGE_CODE = "pt-br"[m