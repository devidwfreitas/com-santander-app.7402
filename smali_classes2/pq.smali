.class Lpq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lpq;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lpq;->a:Lpc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpc;->a(Lpc;Z)Z

    .line 851
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 852
    return-void
.end method
