.class Larg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Larf;


# direct methods
.method constructor <init>(Larf;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Larg;->a:Larf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Larg;->a:Larf;

    invoke-static {v0}, Larf;->a(Larf;)Lard;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lard;->f(Z)V

    .line 122
    return-void
.end method
