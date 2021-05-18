.class final Laai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laas;


# direct methods
.method constructor <init>(Laas;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Laai;->a:Laas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Laai;->a:Laas;

    invoke-interface {v0}, Laas;->a()V

    .line 200
    return-void
.end method
