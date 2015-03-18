/*
 * Lista.cpp
 *
 *  Created on: 27/02/2015
 *      Author: Felipe
 */

#include <src/Lista.hpp>
#include<QTime>
#include<QtGlobal>

Lista::Lista() : QObject()
{
    qRegisterMetaType<GroupDataModel *>("GroupDataModel *");
        m_model = new GroupDataModel();
        m_model->setSortedAscending(false);
        m_model->setGrouping(bb::cascades::ItemGrouping::None);
    // TODO Auto-generated constructor stub

}

GroupDataModel * Lista::model() {   // Retorna a lista.

    return m_model;
}

Lista::~Lista()
{
    // TODO Auto-generated destructor stub
}

void Lista::addList(){
    QTime time = QTime::currentTime();
    qsrand((uint)time.msec());
    int randomIndex = qrand() % 5;
    QString cores[5];
    cores[0] = "Blue";
    cores[1] = "Red";
    cores[2] = "Yellow";
    cores[3] = "Green";
    cores[4] = "Black";
    QVariantMap test;

        test["colors"] = cores[randomIndex];;
        m_model->insert(test);
        emit onModelChanged();
}
