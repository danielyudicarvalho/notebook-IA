FROM jupyter/tensorflow-notebook
# Locales (PT e US)
RUN set -ex \
   && sed -i 's/^# en_US.UTF-8 UTF-8$/en_US.UTF-8 UTF-8/g' /etc/locale.gen \
   && sed -i 's/^# pt_BR.UTF-8 UTF-8$/pt_BR.UTF-8 UTF-8/g' /etc/locale.gen \
   && locale-gen en_US.UTF-8 pt_BR.UTF-8 \
   && update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 \