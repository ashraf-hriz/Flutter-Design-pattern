import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/core/global_widgets/design_pattern/factory_method/factory_method_example.dart';

class DesignPatternsFactoryException implements Exception {
  final String message;

  const DesignPatternsFactoryException(this.message);
}

class DesignPatternFactory {
  const DesignPatternFactory._();

  static Widget create(String id) {
    switch (id) {
      case 'factory-method':
        return const FactoryMethodExampleScreen();
     /*  case 'abstract-factory':
        return const AbstractFactoryExample();
      case 'factory-method':
        return const FactoryMethodExample(); */
      /* case 'adapter':
        return const AdapterExample();
      case 'bridge':
        return const BridgeExample();
      case 'builder':
        return const BuilderExample();
      case 'chain-of-responsibility':
        return const ChainOfResponsibilityExample();
      case 'command':
        return const CommandExample();
      case 'composite':
        return const CompositeExample();
      case 'decorator':
        return const DecoratorExample();
      case 'facade':
        return const FacadeExample();
      
      case 'flyweight':
        return const FlyweightExample();
      case 'interpreter':
        return const InterpreterExample();
      case 'iterator':
        return const IteratorExample();
      case 'mediator':
        return const MediatorExample();
      case 'memento':
        return const MementoExample();
      case 'observer':
        return const ObserverExample();
      case 'prototype':
        return const PrototypeExample();
      case 'proxy':
        return const ProxyExample();
      case 'singleton':
        return const SingletonExample();
      case 'state':
        return const StateExample();
      case 'strategy':
        return const StrategyExample();
      case 'template-method':
        return const TemplateMethodExample();
      case 'visitor':
        return const VisitorExample(); */
      default:
        throw DesignPatternsFactoryException(
          "Design pattern example with id '$id' could not be created.",
        );
    }
  }
}
