.class Lbob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbrf;


# instance fields
.field final synthetic a:Lboa;


# direct methods
.method constructor <init>(Lboa;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lbob;->a:Lboa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lbhp;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lbob;->a:Lboa;

    invoke-static {v0, p1, p2}, Lboa;->a(Lboa;Landroid/os/Bundle;Lbhp;)V

    .line 80
    return-void
.end method
