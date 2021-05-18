.class Lkiu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lkip;


# direct methods
.method constructor <init>(Lkip;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lkiu;->a:Lkip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 253
    const-string v0, ""

    .line 254
    if-eqz p2, :cond_0

    .line 255
    const-string v0, "Sim"

    .line 260
    :goto_0
    const-string v1, "Outros_RecargaDeTelefone_Recarga_GuardarRecarga_Acao"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .line 258
    :cond_0
    const-string v0, "N\u00e3o"

    goto :goto_0
.end method
