/*
 * Copyright (c) 2007, 2020 Oracle and/or its affiliates. All rights reserved.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License v. 2.0, which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * This Source Code may also be made available under the following Secondary
 * Licenses when the conditions for such availability set forth in the
 * Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
 * version 2 with the GNU Classpath Exception, which is available at
 * https://www.gnu.org/software/classpath/license.html.
 *
 * SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0
 */

/*
 * $Id$
 */

package com.sun.ts.tests.assembly.util.refbean;

import java.util.Properties;
import java.util.Collection;
import java.rmi.RemoteException;
import jakarta.ejb.*;

public interface CMP20ExternalHome extends EJBHome {
  public CMP20External create(Properties props, int id, String brandName,
      float price) throws RemoteException, CreateException;

  public CMP20External findByPrimaryKey(Integer key)
      throws RemoteException, FinderException;

  public Collection findByName(String name)
      throws RemoteException, FinderException;
}
