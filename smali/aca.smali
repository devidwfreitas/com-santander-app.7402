.class public Laca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Laca;


# instance fields
.field private b:Lach;

.field private c:Lou;

.field private d:Lji;

.field private e:Ltp;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Laca;->a:Laca;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized a()Laca;
    .locals 3

    .prologue
    .line 29
    const-class v1, Laca;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laca;->a:Laca;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Laca;

    invoke-direct {v0}, Laca;-><init>()V

    sput-object v0, Laca;->a:Laca;

    .line 31
    sget-object v0, Laca;->a:Laca;

    sget-object v2, Lach;->USER_SANTANDER:Lach;

    invoke-direct {v0, v2}, Laca;->a(Lach;)V

    .line 33
    :cond_0
    sget-object v0, Laca;->a:Laca;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lach;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Laca;->b:Lach;

    .line 151
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lach;->USER_SANTANDER:Lach;

    invoke-virtual {v0}, Lach;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 94
    sget-object v0, Lach;->USER_SANTANDER:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    .line 112
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lach;->USER_PRIVATE:Lach;

    invoke-virtual {v0}, Lach;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 96
    sget-object v0, Lach;->USER_PRIVATE:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Lach;->USER_JOVEM_PROFISSIONAL:Lach;

    invoke-virtual {v0}, Lach;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 98
    sget-object v0, Lach;->USER_JOVEM_PROFISSIONAL:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lach;->USER_SELECT:Lach;

    invoke-virtual {v0}, Lach;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 100
    sget-object v0, Lach;->USER_SELECT:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_0

    .line 101
    :cond_3
    sget-object v0, Lach;->USER_UNIVERSIDADES:Lach;

    invoke-virtual {v0}, Lach;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 102
    sget-object v0, Lach;->USER_UNIVERSIDADES:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_0

    .line 103
    :cond_4
    sget-object v0, Lach;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Lach;

    invoke-virtual {v0}, Lach;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 104
    sget-object v0, Lach;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_0

    .line 105
    :cond_5
    sget-object v0, Lach;->USER_VAN_GOGH:Lach;

    invoke-virtual {v0}, Lach;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 106
    sget-object v0, Lach;->USER_VAN_GOGH:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_0

    .line 107
    :cond_6
    sget-object v0, Lach;->USER_VAN_GOGH_UNIVERSIDADES:Lach;

    invoke-virtual {v0}, Lach;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 108
    sget-object v0, Lach;->USER_VAN_GOGH_UNIVERSIDADES:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_0

    .line 110
    :cond_7
    sget-object v0, Lach;->USER_SANTANDER:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Laca;->f:Ljava/lang/Boolean;

    .line 187
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :goto_0
    if-lez v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Laca;->a(I)V

    .line 147
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const/4 v0, -0x1

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lach;->USER_SANTANDER:Lach;

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lach;->USER_SANTANDER:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_1

    .line 129
    :cond_1
    sget-object v0, Lach;->USER_PRIVATE:Lach;

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    sget-object v0, Lach;->USER_PRIVATE:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_1

    .line 131
    :cond_2
    sget-object v0, Lach;->USER_JOVEM_PROFISSIONAL:Lach;

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    sget-object v0, Lach;->USER_JOVEM_PROFISSIONAL:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_1

    .line 133
    :cond_3
    sget-object v0, Lach;->USER_SELECT:Lach;

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    sget-object v0, Lach;->USER_SELECT:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_1

    .line 135
    :cond_4
    sget-object v0, Lach;->USER_UNIVERSIDADES:Lach;

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    sget-object v0, Lach;->USER_UNIVERSIDADES:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_1

    .line 137
    :cond_5
    sget-object v0, Lach;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Lach;

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    sget-object v0, Lach;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto :goto_1

    .line 139
    :cond_6
    sget-object v0, Lach;->USER_VAN_GOGH:Lach;

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    sget-object v0, Lach;->USER_VAN_GOGH:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto/16 :goto_1

    .line 141
    :cond_7
    sget-object v0, Lach;->USER_VAN_GOGH_UNIVERSIDADES:Lach;

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    sget-object v0, Lach;->USER_VAN_GOGH_UNIVERSIDADES:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto/16 :goto_1

    .line 144
    :cond_8
    sget-object v0, Lach;->USER_SANTANDER:Lach;

    invoke-direct {p0, v0}, Laca;->a(Lach;)V

    goto/16 :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ltl;

    .line 45
    if-nez v2, :cond_0

    .line 46
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 49
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v1}, Ltl;->c()Ltc;

    move-result-object v0

    invoke-virtual {v0}, Ltc;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    move-object v2, v0

    .line 69
    goto :goto_0

    .line 55
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-virtual {v1}, Ltl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v1}, Ltl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v1}, Ltl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_3
    move-object v0, v2

    .line 68
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v1}, Ltl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 71
    :cond_3
    iput-object v2, p0, Laca;->g:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public a(Lji;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Laca;->d:Lji;

    .line 171
    return-void
.end method

.method public a(Lou;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Laca;->c:Lou;

    .line 159
    return-void
.end method

.method public a(Ltp;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Laca;->e:Ltp;

    .line 179
    return-void
.end method

.method public a(Ljava/util/Calendar;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 77
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 78
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 79
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 81
    iget-object v0, p0, Laca;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laca;->g:Ljava/util/Map;

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laca;->g:Ljava/util/Map;

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lach;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Laca;->b:Lach;

    return-object v0
.end method

.method public c()Lou;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Laca;->c:Lou;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    sput-object v0, Laca;->a:Laca;

    .line 163
    return-void
.end method

.method public e()Lji;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Laca;->d:Lji;

    return-object v0
.end method

.method public f()Ltp;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Laca;->e:Ltp;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Laca;->f:Ljava/lang/Boolean;

    return-object v0
.end method
