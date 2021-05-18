.class public Lgeu;
.super Lgnd;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lget;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgnd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lget;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lgeu;->a:Lget;

    return-object v0
.end method
