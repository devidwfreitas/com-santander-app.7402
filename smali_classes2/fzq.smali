.class public Lfzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lfzq;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 180
    if-eqz p2, :cond_0

    .line 181
    iget-object v0, p0, Lfzq;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->b(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;I)I

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lfzq;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->b(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;I)I

    goto :goto_0
.end method
