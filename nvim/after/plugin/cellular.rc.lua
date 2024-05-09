local config = {
    fps = 50,
    name = 'fuck',
}


-- update function
config.update = function(grid)
    local fuck = {
        "..... .   .  .....  .  .     .   .  .....  .   .             ",
        ".     .   .  .      . .      .   .  .   .  .   .        .    ",
        ".     .   .  .      ..       .   .  .   .  .   .        .    ",
        "..... .   .  .      ..       .....  .   .  .   .        .    ",
        ".     .   .  .      . .          .  .   .  .   .        .    ",
        ".     .   .  .      .  .         .  .   .  .   .        .    ",
        ".     .....  .....  .   .    .....  .....  .....    . . . . .",
    }

    for i = 1, #grid do
        for j = 1, #(grid[i]) do
            if i <= #fuck and j <= #(fuck[i]) and fuck[i]:sub(j, j) ~= ' ' then
                -- if grid[i][j] == ' ' or grid[i][j] == '' or grid[i][j] == '\n' or grid[i][j] == '\t' then
                --     grid[i][j] = {
                --         char = '.',
                --         hl_group = '@keyword',
                --     }
                -- else
                --     grid[i][j] = grid[i][j]
                -- end
                grid[i][j].char = '🖕'
            else
                grid[i][j].char = '  '
            end
        end
    end
    return true
end

require("cellular-automaton").register_animation(config)


vim.keymap.set("n", "<leader>c1", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>c2", "<cmd>CellularAutomaton game_of_life<CR>")
vim.keymap.set("n", "<leader>c3", "<cmd>CellularAutomaton scramble<CR>")
vim.keymap.set("n", "<leader>c4", "<cmd>CellularAutomaton fuck<CR>")
