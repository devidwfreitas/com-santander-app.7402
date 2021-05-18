.class public Labp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x22

.field private static b:Labp;


# instance fields
.field private c:Lje;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static b()Labp;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Labp;->b:Labp;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Labp;

    invoke-direct {v0}, Labp;-><init>()V

    sput-object v0, Labp;->b:Labp;

    .line 32
    :cond_0
    sget-object v0, Labp;->b:Labp;

    return-object v0
.end method


# virtual methods
.method public a()Lje;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Labp;->c:Lje;

    return-object v0
.end method

.method public a(Lje;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Labp;->c:Lje;

    .line 23
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
