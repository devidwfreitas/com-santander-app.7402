.class public Lhgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgor;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lhgv;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/components/view/CheckCardGroup;Lcom/santander/app/components/view/CheckCardView;I)V
    .locals 1

    .prologue
    .line 148
    sparse-switch p3, :sswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 150
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lhhr;->b(Z)V

    goto :goto_0

    .line 154
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Lhhr;->b(Z)V

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x7f1000e6 -> :sswitch_0
        0x7f1000eb -> :sswitch_1
    .end sparse-switch
.end method
