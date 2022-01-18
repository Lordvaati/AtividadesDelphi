object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Inicio'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 8
    Top = 16
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cargos1: TMenuItem
        Caption = 'Cargos'
        OnClick = Cargos1Click
      end
      object Eventos1: TMenuItem
        Caption = 'Eventos'
        OnClick = Eventos1Click
      end
      object Funcionrios2: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = Funcionrios2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object abeladeINSS1: TMenuItem
        Caption = 'Tabela de INSS'
      end
      object abeladeIRRF1: TMenuItem
        Caption = 'Tabela de IRRF'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
    object Processos1: TMenuItem
      Caption = 'Processos'
      object MudanadeSalrioss1: TMenuItem
        Caption = 'Mudan'#231'a de Sal'#225'rios(s)'
      end
      object LanarEventoparaFuncionrios1: TMenuItem
        Caption = 'Lan'#231'ar Evento para Funcion'#225'rio(s)'
      end
      object FolhadaPagamento1: TMenuItem
        Caption = 'Folha da Pagamento'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object FolhadePagamento1: TMenuItem
        Caption = 'Folha de Pagamento'
      end
      object Funcionrios1: TMenuItem
        Caption = 'Funcion'#225'rios'
      end
    end
    object Sair3: TMenuItem
      Caption = 'Sair'
    end
  end
end
