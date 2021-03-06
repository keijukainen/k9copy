/***************************************************************************
 *   Copyright (C) 2007 by Jean-Michel   *
 *   jm_petit@laposte.net   *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/
#ifndef K9DVDBACKUPINTERFACE_H
#define K9DVDBACKUPINTERFACE_H

#include <QObject>
#include <stdint.h>
class k9vamps;

class k9DVDBackupInterface : public QObject
{
Q_OBJECT
public:
    enum eStreamType { AUDIO,SUBPICTURE,VIDEO,NAV};
    k9DVDBackupInterface(QObject *parent = 0);

    ~k9DVDBackupInterface();
protected:
    k9vamps *m_vamps;
public slots:
    virtual void setVamps(k9vamps *_vamps) {m_vamps=_vamps;}
    virtual k9vamps *getVamps() {return m_vamps;};
  virtual void getOutput(uchar *buffer,uint32_t size) =0;
  virtual void getOutput(eStreamType streamType,int streamNumber,uchar *buffer,uint32_t size)=0;
};

#endif
