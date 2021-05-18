.class Lfyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lfxv;


# direct methods
.method constructor <init>(Lfxv;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lfyc;->a:Lfxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 425
    invoke-static {p2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Z)V

    .line 426
    iget-object v0, p0, Lfyc;->a:Lfxv;

    invoke-static {v0}, Lfxv;->a(Lfxv;)Lfye;

    move-result-object v0

    invoke-interface {v0}, Lfye;->a()V

    .line 427
    return-void
.end method
