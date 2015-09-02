unit uDMImages;

interface

uses
  SysUtils, Classes, ImgList, Controls;

type
  TdmImages = class(TDataModule)
    ilButtions: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmImages: TdmImages;

implementation

{$R *.dfm}

end.
